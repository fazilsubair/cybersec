package b.q;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class o {
    public static k a = new b();

    /* renamed from: b, reason: collision with root package name */
    public static ThreadLocal<WeakReference<b.e.a<ViewGroup, ArrayList<k>>>> f724b = new ThreadLocal<>();

    /* renamed from: c, reason: collision with root package name */
    public static ArrayList<ViewGroup> f725c = new ArrayList<>();

    public static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: b, reason: collision with root package name */
        public k f726b;

        /* renamed from: c, reason: collision with root package name */
        public ViewGroup f727c;

        /* renamed from: b.q.o$a$a, reason: collision with other inner class name */
        public class C0032a extends n {
            public final /* synthetic */ b.e.a a;

            public C0032a(b.e.a aVar) {
                this.a = aVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // b.q.k.d
            public void c(k kVar) {
                ((ArrayList) this.a.get(a.this.f727c)).remove(kVar);
                kVar.v(this);
            }
        }

        public a(k kVar, ViewGroup viewGroup) {
            this.f726b = kVar;
            this.f727c = viewGroup;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:11:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:126:0x01f4 A[EDGE_INSN: B:126:0x01f4->B:127:0x01f4 BREAK  A[LOOP:1: B:17:0x009a->B:30:0x01ea], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:130:0x01f9  */
        /* JADX WARN: Removed duplicated region for block: B:140:0x021a  */
        /* JADX WARN: Removed duplicated region for block: B:149:0x0244  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x009f  */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onPreDraw() {
            /*
                Method dump skipped, instructions count: 694
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: b.q.o.a.onPreDraw():boolean");
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            this.f727c.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f727c.removeOnAttachStateChangeListener(this);
            o.f725c.remove(this.f727c);
            ArrayList<k> arrayList = o.a().get(this.f727c);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator<k> it = arrayList.iterator();
                while (it.hasNext()) {
                    it.next().x(this.f727c);
                }
            }
            this.f726b.i(true);
        }
    }

    public static b.e.a<ViewGroup, ArrayList<k>> a() {
        b.e.a<ViewGroup, ArrayList<k>> aVar;
        WeakReference<b.e.a<ViewGroup, ArrayList<k>>> weakReference = f724b.get();
        if (weakReference != null && (aVar = weakReference.get()) != null) {
            return aVar;
        }
        b.e.a<ViewGroup, ArrayList<k>> aVar2 = new b.e.a<>();
        f724b.set(new WeakReference<>(aVar2));
        return aVar2;
    }
}
