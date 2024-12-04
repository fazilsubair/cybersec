package b.b.g.e;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import b.b.g.e.k;
import b.b.h.d0;
import b.b.h.e0;
import com.example.apkey.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class d extends i implements k, View.OnKeyListener, PopupWindow.OnDismissListener {
    public PopupWindow.OnDismissListener A;
    public boolean B;

    /* renamed from: c, reason: collision with root package name */
    public final Context f172c;
    public final int d;
    public final int e;
    public final int f;
    public final boolean g;
    public final Handler h;
    public View p;
    public View q;
    public int r;
    public boolean s;
    public boolean t;
    public int u;
    public int v;
    public boolean x;
    public k.a y;
    public ViewTreeObserver z;
    public final List<f> i = new ArrayList();
    public final List<C0007d> j = new ArrayList();
    public final ViewTreeObserver.OnGlobalLayoutListener k = new a();
    public final View.OnAttachStateChangeListener l = new b();
    public final d0 m = new c();
    public int n = 0;
    public int o = 0;
    public boolean w = false;

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!d.this.b() || d.this.j.size() <= 0 || d.this.j.get(0).a.z) {
                return;
            }
            View view = d.this.q;
            if (view == null || !view.isShown()) {
                d.this.i();
                return;
            }
            Iterator<C0007d> it = d.this.j.iterator();
            while (it.hasNext()) {
                it.next().a.e();
            }
        }
    }

    public class b implements View.OnAttachStateChangeListener {
        public b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = d.this.z;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    d.this.z = view.getViewTreeObserver();
                }
                d dVar = d.this;
                dVar.z.removeGlobalOnLayoutListener(dVar.k);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public class c implements d0 {

        public class a implements Runnable {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ C0007d f176b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ MenuItem f177c;
            public final /* synthetic */ f d;

            public a(C0007d c0007d, MenuItem menuItem, f fVar) {
                this.f176b = c0007d;
                this.f177c = menuItem;
                this.d = fVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0007d c0007d = this.f176b;
                if (c0007d != null) {
                    d.this.B = true;
                    c0007d.f178b.c(false);
                    d.this.B = false;
                }
                if (this.f177c.isEnabled() && this.f177c.hasSubMenu()) {
                    this.d.q(this.f177c, 4);
                }
            }
        }

        public c() {
        }

        @Override // b.b.h.d0
        public void a(f fVar, MenuItem menuItem) {
            d.this.h.removeCallbacksAndMessages(null);
            int size = d.this.j.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (fVar == d.this.j.get(i).f178b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            d.this.h.postAtTime(new a(i2 < d.this.j.size() ? d.this.j.get(i2) : null, menuItem, fVar), fVar, SystemClock.uptimeMillis() + 200);
        }

        @Override // b.b.h.d0
        public void d(f fVar, MenuItem menuItem) {
            d.this.h.removeCallbacksAndMessages(fVar);
        }
    }

    /* renamed from: b.b.g.e.d$d, reason: collision with other inner class name */
    public static class C0007d {
        public final e0 a;

        /* renamed from: b, reason: collision with root package name */
        public final f f178b;

        /* renamed from: c, reason: collision with root package name */
        public final int f179c;

        public C0007d(e0 e0Var, f fVar, int i) {
            this.a = e0Var;
            this.f178b = fVar;
            this.f179c = i;
        }
    }

    public d(Context context, View view, int i, int i2, boolean z) {
        this.f172c = context;
        this.p = view;
        this.e = i;
        this.f = i2;
        this.g = z;
        this.r = b.h.j.q.o(view) != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.d = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.h = new Handler();
    }

    @Override // b.b.g.e.k
    public void a(f fVar, boolean z) {
        int size = this.j.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (fVar == this.j.get(i).f178b) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        int i2 = i + 1;
        if (i2 < this.j.size()) {
            this.j.get(i2).f178b.c(false);
        }
        C0007d remove = this.j.remove(i);
        remove.f178b.t(this);
        if (this.B) {
            e0 e0Var = remove.a;
            e0Var.getClass();
            if (Build.VERSION.SDK_INT >= 23) {
                e0Var.A.setExitTransition(null);
            }
            remove.a.A.setAnimationStyle(0);
        }
        remove.a.i();
        int size2 = this.j.size();
        this.r = size2 > 0 ? this.j.get(size2 - 1).f179c : b.h.j.q.o(this.p) == 1 ? 0 : 1;
        if (size2 != 0) {
            if (z) {
                this.j.get(0).f178b.c(false);
                return;
            }
            return;
        }
        i();
        k.a aVar = this.y;
        if (aVar != null) {
            aVar.a(fVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.z;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.z.removeGlobalOnLayoutListener(this.k);
            }
            this.z = null;
        }
        this.q.removeOnAttachStateChangeListener(this.l);
        this.A.onDismiss();
    }

    @Override // b.b.g.e.n
    public boolean b() {
        return this.j.size() > 0 && this.j.get(0).a.b();
    }

    @Override // b.b.g.e.n
    public ListView c() {
        if (this.j.isEmpty()) {
            return null;
        }
        return this.j.get(r0.size() - 1).a.d;
    }

    @Override // b.b.g.e.n
    public void e() {
        if (b()) {
            return;
        }
        Iterator<f> it = this.i.iterator();
        while (it.hasNext()) {
            x(it.next());
        }
        this.i.clear();
        View view = this.p;
        this.q = view;
        if (view != null) {
            boolean z = this.z == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.z = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.k);
            }
            this.q.addOnAttachStateChangeListener(this.l);
        }
    }

    @Override // b.b.g.e.k
    public void f(k.a aVar) {
        this.y = aVar;
    }

    @Override // b.b.g.e.k
    public boolean g(p pVar) {
        for (C0007d c0007d : this.j) {
            if (pVar == c0007d.f178b) {
                c0007d.a.d.requestFocus();
                return true;
            }
        }
        if (!pVar.hasVisibleItems()) {
            return false;
        }
        pVar.b(this, this.f172c);
        if (b()) {
            x(pVar);
        } else {
            this.i.add(pVar);
        }
        k.a aVar = this.y;
        if (aVar != null) {
            aVar.b(pVar);
        }
        return true;
    }

    @Override // b.b.g.e.k
    public boolean h() {
        return false;
    }

    @Override // b.b.g.e.n
    public void i() {
        int size = this.j.size();
        if (size > 0) {
            C0007d[] c0007dArr = (C0007d[]) this.j.toArray(new C0007d[size]);
            for (int i = size - 1; i >= 0; i--) {
                C0007d c0007d = c0007dArr[i];
                if (c0007d.a.b()) {
                    c0007d.a.i();
                }
            }
        }
    }

    @Override // b.b.g.e.k
    public void j(boolean z) {
        Iterator<C0007d> it = this.j.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = it.next().a.d.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((e) adapter).notifyDataSetChanged();
        }
    }

    @Override // b.b.g.e.i
    public void m(f fVar) {
        fVar.b(this, this.f172c);
        if (b()) {
            x(fVar);
        } else {
            this.i.add(fVar);
        }
    }

    @Override // b.b.g.e.i
    public boolean n() {
        return false;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        C0007d c0007d;
        int size = this.j.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c0007d = null;
                break;
            }
            c0007d = this.j.get(i);
            if (!c0007d.a.b()) {
                break;
            } else {
                i++;
            }
        }
        if (c0007d != null) {
            c0007d.f178b.c(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        i();
        return true;
    }

    @Override // b.b.g.e.i
    public void p(View view) {
        if (this.p != view) {
            this.p = view;
            this.o = b.h.b.a.x(this.n, b.h.j.q.o(view));
        }
    }

    @Override // b.b.g.e.i
    public void q(boolean z) {
        this.w = z;
    }

    @Override // b.b.g.e.i
    public void r(int i) {
        if (this.n != i) {
            this.n = i;
            this.o = b.h.b.a.x(i, b.h.j.q.o(this.p));
        }
    }

    @Override // b.b.g.e.i
    public void s(int i) {
        this.s = true;
        this.u = i;
    }

    @Override // b.b.g.e.i
    public void t(PopupWindow.OnDismissListener onDismissListener) {
        this.A = onDismissListener;
    }

    @Override // b.b.g.e.i
    public void u(boolean z) {
        this.x = z;
    }

    @Override // b.b.g.e.i
    public void v(int i) {
        this.t = true;
        this.v = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void x(b.b.g.e.f r17) {
        /*
            Method dump skipped, instructions count: 531
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.e.d.x(b.b.g.e.f):void");
    }
}
