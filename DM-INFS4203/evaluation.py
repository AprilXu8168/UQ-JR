class Record:
    def __init__(self, tp, tn, fp, fn):
        self.tp = tp
        self.tn = tn
        self.fp = fp
        self.fn = fn

    def __repr__(self):
        return f"Record(tp={self.tp}, tn={self.tn}, fp={self.fp}, fn={self.fn})"

    def norm():
        return None

    def precision (self):
        return self.tp / (self.tp + self.fp) if (self.tp + self.fp) > 0 else 0

    def recall():
        return None