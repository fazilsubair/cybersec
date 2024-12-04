package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import b.b.h.s;
import c.c.a.a.b;
import c.c.a.a.y.a.a;

/* loaded from: classes.dex */
public class MaterialTextView extends s {
    public MaterialTextView(Context context, AttributeSet attributeSet) {
        super(a.a(context, attributeSet, R.attr.textViewStyle, 0), attributeSet, R.attr.textViewStyle);
        Context context2 = getContext();
        if (c.c.a.a.a.q(context2, com.example.apkey.R.attr.textAppearanceLineHeightEnabled, true)) {
            Resources.Theme theme = context2.getTheme();
            int[] iArr = b.t;
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, R.attr.textViewStyle, 0);
            int e = e(context2, obtainStyledAttributes, 1, 2);
            obtainStyledAttributes.recycle();
            if (e != -1) {
                return;
            }
            TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, R.attr.textViewStyle, 0);
            int resourceId = obtainStyledAttributes2.getResourceId(0, -1);
            obtainStyledAttributes2.recycle();
            if (resourceId != -1) {
                d(theme, resourceId);
            }
        }
    }

    public static int e(Context context, TypedArray typedArray, int... iArr) {
        int i = -1;
        for (int i2 = 0; i2 < iArr.length && i < 0; i2++) {
            int i3 = iArr[i2];
            TypedValue typedValue = new TypedValue();
            if (typedArray.getValue(i3, typedValue) && typedValue.type == 2) {
                TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
                int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, -1);
                obtainStyledAttributes.recycle();
                i = dimensionPixelSize;
            } else {
                i = typedArray.getDimensionPixelSize(i3, -1);
            }
        }
        return i;
    }

    public final void d(Resources.Theme theme, int i) {
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(i, b.s);
        int e = e(getContext(), obtainStyledAttributes, 1, 2);
        obtainStyledAttributes.recycle();
        if (e >= 0) {
            setLineHeight(e);
        }
    }

    @Override // b.b.h.s, android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (c.c.a.a.a.q(context, com.example.apkey.R.attr.textAppearanceLineHeightEnabled, true)) {
            d(context.getTheme(), i);
        }
    }
}
