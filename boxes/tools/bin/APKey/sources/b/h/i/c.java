package b.h.i;

/* JADX WARN: Unexpected interfaces in signature: [b.h.i.c<T>] */
/* loaded from: classes.dex */
public class c<T> {
    public final Object[] a;

    /* renamed from: b, reason: collision with root package name */
    public int f458b;

    public c(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.a = new Object[i];
    }

    public T a() {
        int i = this.f458b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.a;
        T t = (T) objArr[i2];
        objArr[i2] = null;
        this.f458b = i - 1;
        return t;
    }

    public boolean b(T t) {
        int i;
        boolean z;
        int i2 = 0;
        while (true) {
            i = this.f458b;
            if (i2 >= i) {
                z = false;
                break;
            }
            if (this.a[i2] == t) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            throw new IllegalStateException("Already in the pool!");
        }
        Object[] objArr = this.a;
        if (i >= objArr.length) {
            return false;
        }
        objArr[i] = t;
        this.f458b = i + 1;
        return true;
    }
}
