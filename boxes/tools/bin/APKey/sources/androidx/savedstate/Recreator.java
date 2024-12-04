package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import b.m.d;
import b.m.e;
import b.m.g;
import b.m.h;
import b.p.a;
import b.p.c;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

@SuppressLint({"RestrictedApi"})
/* loaded from: classes.dex */
public final class Recreator implements e {
    public final c a;

    public static final class a implements a.b {
        public final Set<String> a = new HashSet();

        public a(b.p.a aVar) {
            aVar.b("androidx.savedstate.Restarter", this);
        }

        @Override // b.p.a.b
        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.a));
            return bundle;
        }
    }

    public Recreator(c cVar) {
        this.a = cVar;
    }

    @Override // b.m.e
    public void h(g gVar, d.a aVar) {
        if (aVar != d.a.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        h hVar = (h) gVar.a();
        hVar.c("removeObserver");
        hVar.a.e(this);
        Bundle a2 = this.a.c().a("androidx.savedstate.Restarter");
        if (a2 == null) {
            return;
        }
        ArrayList<String> stringArrayList = a2.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        Iterator<String> it = stringArrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            try {
                Class<? extends U> asSubclass = Class.forName(next, false, Recreator.class.getClassLoader()).asSubclass(a.InterfaceC0030a.class);
                try {
                    Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                    declaredConstructor.setAccessible(true);
                    try {
                        ((a.InterfaceC0030a) declaredConstructor.newInstance(new Object[0])).a(this.a);
                    } catch (Exception e) {
                        throw new RuntimeException(c.a.a.a.a.d("Failed to instantiate ", next), e);
                    }
                } catch (NoSuchMethodException e2) {
                    StringBuilder g = c.a.a.a.a.g("Class");
                    g.append(asSubclass.getSimpleName());
                    g.append(" must have default constructor in order to be automatically recreated");
                    throw new IllegalStateException(g.toString(), e2);
                }
            } catch (ClassNotFoundException e3) {
                throw new RuntimeException(c.a.a.a.a.e("Class ", next, " wasn't found"), e3);
            }
        }
    }
}
