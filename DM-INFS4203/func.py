from evaluation import *

def main():
    record = Record(tp=10, tn=15, fp=5, fn=3)
    prec = record.precision()

    print(f"Performance:\nPrecision: {prec:.2f}")
    print("Script running done")

    # result = [10, 15, 5, 3]
    # prec = result[0]/result[1]+result[0]
    # print("simgle coding prac", round(prec, 2))

if __name__ == "__main__":
    main()