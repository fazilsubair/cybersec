package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import b.h.j.q;
import com.example.apkey.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ClockHandView extends View {
    public static final /* synthetic */ int q = 0;

    /* renamed from: b, reason: collision with root package name */
    public ValueAnimator f970b;

    /* renamed from: c, reason: collision with root package name */
    public float f971c;
    public float d;
    public boolean e;
    public int f;
    public final List<c> g;
    public final int h;
    public final float i;
    public final Paint j;
    public final RectF k;
    public final int l;
    public float m;
    public boolean n;
    public double o;
    public int p;

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ClockHandView clockHandView = ClockHandView.this;
            int i = ClockHandView.q;
            clockHandView.c(floatValue, true);
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b(ClockHandView clockHandView) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    public interface c {
        void a(float f, boolean z);
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.materialClockStyle);
        this.g = new ArrayList();
        Paint paint = new Paint();
        this.j = paint;
        this.k = new RectF();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.c.a.a.b.f, R.attr.materialClockStyle, R.style.Widget_MaterialComponents_TimePicker_Clock);
        this.p = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.h = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.l = getResources().getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.i = r4.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = obtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        b(0.0f, false);
        this.f = ViewConfiguration.get(context).getScaledTouchSlop();
        q.I(this, 2);
        obtainStyledAttributes.recycle();
    }

    public final int a(float f, float f2) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f2 - (getHeight() / 2), f - (getWidth() / 2)))) + 90;
        return degrees < 0 ? degrees + 360 : degrees;
    }

    public void b(float f, boolean z) {
        ValueAnimator valueAnimator = this.f970b;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z) {
            c(f, false);
            return;
        }
        float f2 = this.m;
        if (Math.abs(f2 - f) > 180.0f) {
            if (f2 > 180.0f && f < 180.0f) {
                f += 360.0f;
            }
            if (f2 < 180.0f && f > 180.0f) {
                f2 += 360.0f;
            }
        }
        Pair pair = new Pair(Float.valueOf(f2), Float.valueOf(f));
        ValueAnimator ofFloat = ValueAnimator.ofFloat(((Float) pair.first).floatValue(), ((Float) pair.second).floatValue());
        this.f970b = ofFloat;
        ofFloat.setDuration(200L);
        this.f970b.addUpdateListener(new a());
        this.f970b.addListener(new b(this));
        this.f970b.start();
    }

    public final void c(float f, boolean z) {
        float f2 = f % 360.0f;
        this.m = f2;
        this.o = Math.toRadians(f2 - 90.0f);
        int height = getHeight() / 2;
        float cos = (this.p * ((float) Math.cos(this.o))) + (getWidth() / 2);
        float sin = (this.p * ((float) Math.sin(this.o))) + height;
        RectF rectF = this.k;
        int i = this.h;
        rectF.set(cos - i, sin - i, cos + i, sin + i);
        Iterator<c> it = this.g.iterator();
        while (it.hasNext()) {
            it.next().a(f2, z);
        }
        invalidate();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        float width = getWidth() / 2;
        float cos = (this.p * ((float) Math.cos(this.o))) + width;
        float f = height;
        float sin = (this.p * ((float) Math.sin(this.o))) + f;
        this.j.setStrokeWidth(0.0f);
        canvas.drawCircle(cos, sin, this.h, this.j);
        double sin2 = Math.sin(this.o);
        double cos2 = Math.cos(this.o);
        Double.isNaN(r6);
        Double.isNaN(r6);
        Double.isNaN(r6);
        Double.isNaN(r6);
        this.j.setStrokeWidth(this.l);
        canvas.drawLine(width, f, r1 + ((int) (cos2 * r6)), height + ((int) (r6 * sin2)), this.j);
        canvas.drawCircle(width, f, this.i, this.j);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        b(this.m, false);
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        boolean z3 = false;
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i = (int) (x - this.f971c);
                int i2 = (int) (y - this.d);
                this.e = (i2 * i2) + (i * i) > this.f;
                z = this.n;
                if (actionMasked == 1) {
                }
            } else {
                z = false;
            }
            z2 = false;
        } else {
            this.f971c = x;
            this.d = y;
            this.e = true;
            this.n = false;
            z = false;
            z2 = true;
        }
        boolean z4 = this.n;
        float a2 = a(x, y);
        boolean z5 = this.m != a2;
        if (!z2 || !z5) {
            if (z5 || z) {
                b(a2, false);
            }
            this.n = z4 | z3;
            return true;
        }
        z3 = true;
        this.n = z4 | z3;
        return true;
    }
}
