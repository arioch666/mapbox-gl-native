#pragma once

#include <pthread.h>

namespace mbgl {
namespace util {

template <typename T>
class Atomic {
public:
    Atomic() = default;
    explicit Atomic(const T& data_) : data(data_) {}

    void operator=(const T& other) {
        pthread_mutex_lock(&mutex);
        data = other;
        pthread_mutex_unlock(&mutex);
    }

    operator bool() const {
        pthread_mutex_lock(&mutex);
        bool ret = data;
        pthread_mutex_unlock(&mutex);

        return ret;
    }

private:
    T data;
    mutable pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
};

} // namespace util
} // namespace mbgl
