from evaluation import *

def main():
    record = Record(tp=10, tn=15, fp=5, fn=3)
    prec = record.precision()
    print(f"Performance:\nPrecision: {prec:.2f}")
    
    print("Script running done")

if __name__ == "__main__":
    main()