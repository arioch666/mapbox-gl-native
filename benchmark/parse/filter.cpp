#include <benchmark/benchmark.h>

#include <mbgl/style/filter.hpp>
#include <mbgl/style/filter_evaluator.hpp>
#include <mbgl/style/style_parser.hpp>
#include <mbgl/tile/geometry_tile.hpp>

#include <rapidjson/document.h>

#include <map>

using namespace mbgl;

typedef std::multimap<std::string, mbgl::Value> Properties;

class StubFeature : public GeometryTileFeature {
public:
    inline StubFeature(const Properties& properties_, FeatureType type_)
        : properties(properties_), type(type_) {
    }

    optional<Value> getValue(const std::string& key) const override {
        auto it = properties.find(key);
        if (it == properties.end())
            return optional<Value>();
        return it->second;
    }

    FeatureType getType() const override {
        return type;
    }

    GeometryCollection getGeometries() const override {
        return GeometryCollection();
    }

private:
    const Properties properties;
    FeatureType type;
};

Filter parse(const char* expression) {
    rapidjson::GenericDocument<rapidjson::UTF8<>, rapidjson::CrtAllocator> doc;
    doc.Parse<0>(expression);
    return parseFilter(doc);
}

static void Parse_Filter(benchmark::State& state) {
    while (state.KeepRunning()) {
        parse("[\"==\", \"foo\", \"bar\"]");
    }
}

static void Parse_EvaluateFilter(benchmark::State& state) {
    const Filter filter = parse("[\"==\", \"foo\", \"bar\"]");
    const Properties properties = { { "foo", std::string("bar") } };
    const StubFeature feature(properties, FeatureType::Unknown);

    while (state.KeepRunning()) {
        Filter::visit(filter, FilterEvaluator{ feature });
    }
}

BENCHMARK(Parse_Filter);
BENCHMARK(Parse_EvaluateFilter);
