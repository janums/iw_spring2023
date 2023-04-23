import time
import random
import matplotlib.pyplot as plt
import numpy as np


def function_to_be_timed(type='none', lo=0.0, hi=1.0):
    if type == 'random':
        time.sleep(random.random())
    else:
        time.sleep(random.random() * (hi - lo) + lo)


# this functon normalizes all the values in the list to sum to 1
def normalize_c(values):
    total = sum(values)
    result = []
    for value in values:
        result.append(value / total)
    return result


def benchmark(iterations):
    times = []
    for i in range(iterations):
        start_time = time.time()
        function_to_be_timed(0.000001, 0.00001)
        end_time = time.time()
        elapsed_time = end_time - start_time
        # print(f"Iteration {i+1} took {elapsed_time:.6f} seconds.")
        times.append(elapsed_time)
    return normalize_c(times)


# this function plots a bar graph of the array passed into it
def plot():
    times = benchmark(57)
    plt.bar(np.arange(len(times)), times)
    plt.show()


if __name__ == "__main__":
    print("Running benchmark...")
    plot()
