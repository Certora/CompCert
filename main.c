bool is_sorted(const unsigned int *numbers, int len) {
    if (len <= 1) {
        return true;
    }

    for (int i = 1; i < len; i++) {
        if (numbers[i] < numbers[i-1]) {
            return false;
        }
    }

    return true;
}

int main() {
    return 0;
}