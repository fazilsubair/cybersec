package b.f.b;

/* JADX WARN: Unexpected interfaces in signature: [b.f.b.e<T>] */
/* loaded from: classes.dex */
public class e<T> {
    public final Object[] a;

    /* renamed from: b, reason: collision with root package name */
    public int f328b;

    public e(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.a = new Object[i];
    }

    public T a() {
        int i = this.f328b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.a;
        T t = (T) objArr[i2];
        objArr[i2] = null;
        this.f328b = i - 1;
        return t;
    }

    public boolean b(T t) {
        int i = this.f328b;
        Object[] objArr = this.a;
        if (i >= objArr.length) {
            return false;
        }
        objArr[i] = t;
        this.f328b = i + 1;
        return true;
    }
}
