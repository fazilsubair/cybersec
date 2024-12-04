package androidx.lifecycle;

import b.m.b;
import b.m.d;
import b.m.e;
import b.m.g;

/* loaded from: classes.dex */
public class FullLifecycleObserverAdapter implements e {
    public final b a;

    /* renamed from: b, reason: collision with root package name */
    public final e f69b;

    public FullLifecycleObserverAdapter(b bVar, e eVar) {
        this.a = bVar;
        this.f69b = eVar;
    }

    @Override // b.m.e
    public void h(g gVar, d.a aVar) {
        switch (aVar) {
            case ON_CREATE:
                this.a.f(gVar);
                break;
            case ON_START:
                this.a.g(gVar);
                break;
            case ON_RESUME:
                this.a.a(gVar);
                break;
            case ON_PAUSE:
                this.a.b(gVar);
                break;
            case ON_STOP:
                this.a.e(gVar);
                break;
            case ON_DESTROY:
                this.a.c(gVar);
                break;
            case ON_ANY:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        e eVar = this.f69b;
        if (eVar != null) {
            eVar.h(gVar, aVar);
        }
    }
}
