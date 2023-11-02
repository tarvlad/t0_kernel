#pragma once


class String {
    unsigned length_;
    char *data_;

public:
    String(char *data, unsigned length) {
        data_ = data;
        length_ = length;
    }

    const char &operator[](unsigned i) const {
        return data_[i];
    }

    char &operator[](unsigned i) {
        return data_[i];
    }

    unsigned length() const {
        return length_;
    }
};