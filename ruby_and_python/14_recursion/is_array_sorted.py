def is_array_in_sorted_order(array):
    if len(array) == 1:
        return True

    return array[0] <= array[1] and is_array_in_sorted_order(array[1:])

array = [127, 220, 246, 277, 321, 454, 565, 831, 910]
print(is_array_in_sorted_order(array))
