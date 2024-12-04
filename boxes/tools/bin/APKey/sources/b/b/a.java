package b.b;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import b.b.h.r0;
import b.b.h.v0;
import b.f.b.h.c;
import b.f.b.h.d;
import b.f.b.h.f;
import b.f.b.h.h;
import b.f.b.h.l.n;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class a {
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02d1, code lost:
    
        if (r3[r17].f.d == r9) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0149, code lost:
    
        if (r4[r2].f.d == r5) goto L77;
     */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x048d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:255:0x071d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0731  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x073a  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0743  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0755  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x075b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0778 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0752  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x073d  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0734  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x04f6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:309:0x05e2  */
    /* JADX WARN: Removed duplicated region for block: B:312:0x05e4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x058d  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0597  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x05aa  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x05b5  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x05c1  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x05c4  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x0574  */
    /* JADX WARN: Removed duplicated region for block: B:359:0x05f0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0603  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x0660  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0675  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0678  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x0668  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x06d4  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x0708 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0152  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(b.f.b.h.e r37, b.f.b.d r38, java.util.ArrayList<b.f.b.h.d> r39, int r40) {
        /*
            Method dump skipped, instructions count: 1926
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.a.a(b.f.b.h.e, b.f.b.d, java.util.ArrayList, int):void");
    }

    public static n b(d dVar, int i, ArrayList<n> arrayList, n nVar) {
        c cVar;
        int i2;
        int i3 = i == 0 ? dVar.j0 : dVar.k0;
        if (i3 != -1 && (nVar == null || i3 != nVar.f357b)) {
            int i4 = 0;
            while (true) {
                if (i4 >= arrayList.size()) {
                    break;
                }
                n nVar2 = arrayList.get(i4);
                if (nVar2.f357b == i3) {
                    if (nVar != null) {
                        nVar.d(i, nVar2);
                        arrayList.remove(nVar);
                    }
                    nVar = nVar2;
                } else {
                    i4++;
                }
            }
        } else if (i3 != -1) {
            return nVar;
        }
        if (nVar == null) {
            if (dVar instanceof h) {
                h hVar = (h) dVar;
                int i5 = 0;
                while (true) {
                    if (i5 >= hVar.m0) {
                        i2 = -1;
                        break;
                    }
                    d dVar2 = hVar.l0[i5];
                    if ((i == 0 && (i2 = dVar2.j0) != -1) || (i == 1 && (i2 = dVar2.k0) != -1)) {
                        break;
                    }
                    i5++;
                }
                if (i2 != -1) {
                    int i6 = 0;
                    while (true) {
                        if (i6 >= arrayList.size()) {
                            break;
                        }
                        n nVar3 = arrayList.get(i6);
                        if (nVar3.f357b == i2) {
                            nVar = nVar3;
                            break;
                        }
                        i6++;
                    }
                }
            }
            if (nVar == null) {
                nVar = new n(i);
            }
            arrayList.add(nVar);
        }
        if (nVar.a(dVar)) {
            if (dVar instanceof f) {
                f fVar = (f) dVar;
                fVar.o0.b(fVar.p0 == 0 ? 1 : 0, arrayList, nVar);
            }
            if (i == 0) {
                dVar.j0 = nVar.f357b;
                dVar.D.b(i, arrayList, nVar);
                cVar = dVar.F;
            } else {
                dVar.k0 = nVar.f357b;
                dVar.E.b(i, arrayList, nVar);
                dVar.H.b(i, arrayList, nVar);
                cVar = dVar.G;
            }
            cVar.b(i, arrayList, nVar);
            dVar.K.b(i, arrayList, nVar);
        }
        return nVar;
    }

    public static n c(ArrayList<n> arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            n nVar = arrayList.get(i2);
            if (i == nVar.f357b) {
                return nVar;
            }
        }
        return null;
    }

    public static InputConnection d(InputConnection inputConnection, EditorInfo editorInfo, View view) {
        if (inputConnection != null && editorInfo.hintText == null) {
            ViewParent parent = view.getParent();
            while (true) {
                if (!(parent instanceof View)) {
                    break;
                }
                if (parent instanceof v0) {
                    editorInfo.hintText = ((v0) parent).a();
                    break;
                }
                parent = parent.getParent();
            }
        }
        return inputConnection;
    }

    public static void e(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
            return;
        }
        r0 r0Var = r0.k;
        if (r0Var != null && r0Var.f265b == view) {
            r0.c(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new r0(view, charSequence);
            return;
        }
        r0 r0Var2 = r0.l;
        if (r0Var2 != null && r0Var2.f265b == view) {
            r0Var2.b();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    public static boolean f(d.a aVar, d.a aVar2, d.a aVar3, d.a aVar4) {
        d.a aVar5 = d.a.MATCH_PARENT;
        d.a aVar6 = d.a.WRAP_CONTENT;
        d.a aVar7 = d.a.FIXED;
        return (aVar3 == aVar7 || aVar3 == aVar6 || (aVar3 == aVar5 && aVar != aVar6)) || (aVar4 == aVar7 || aVar4 == aVar6 || (aVar4 == aVar5 && aVar2 != aVar6));
    }
}
