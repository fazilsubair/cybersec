package i;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import com.satellite.bigbang.R;
import y.AbstractC0237a;

/* renamed from: i.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0176w {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f2938a = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};

    /* renamed from: b, reason: collision with root package name */
    public final int[] f2939b = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};

    /* renamed from: c, reason: collision with root package name */
    public final int[] f2940c = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};

    /* renamed from: d, reason: collision with root package name */
    public final int[] f2941d = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};

    /* renamed from: e, reason: collision with root package name */
    public final int[] f2942e = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};

    /* renamed from: f, reason: collision with root package name */
    public final int[] f2943f = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};

    public static boolean a(int[] iArr, int i2) {
        for (int i3 : iArr) {
            if (i3 == i2) {
                return true;
            }
        }
        return false;
    }

    public static ColorStateList b(Context context, int i2) {
        int c2 = Q0.c(context, R.attr.colorControlHighlight);
        return new ColorStateList(new int[][]{Q0.f2699b, Q0.f2701d, Q0.f2700c, Q0.f2703f}, new int[]{Q0.b(context, R.attr.colorButtonNormal), AbstractC0237a.b(c2, i2), AbstractC0237a.b(c2, i2), i2});
    }

    public static LayerDrawable c(C0181y0 c0181y0, Context context, int i2) {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i2);
        Drawable e2 = c0181y0.e(context, R.drawable.abc_star_black_48dp);
        Drawable e3 = c0181y0.e(context, R.drawable.abc_star_half_black_48dp);
        if ((e2 instanceof BitmapDrawable) && e2.getIntrinsicWidth() == dimensionPixelSize && e2.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) e2;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            e2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            e2.draw(canvas);
            bitmapDrawable = new BitmapDrawable(createBitmap);
            bitmapDrawable2 = new BitmapDrawable(createBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((e3 instanceof BitmapDrawable) && e3.getIntrinsicWidth() == dimensionPixelSize && e3.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) e3;
        } else {
            Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(createBitmap2);
            e3.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            e3.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(createBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.secondaryProgress);
        layerDrawable.setId(2, android.R.id.progress);
        return layerDrawable;
    }

    public static void e(Drawable drawable, int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter g2;
        if (AbstractC0146g0.a(drawable)) {
            drawable = drawable.mutate();
        }
        if (mode == null) {
            mode = C0178x.f2945b;
        }
        PorterDuff.Mode mode2 = C0178x.f2945b;
        synchronized (C0178x.class) {
            g2 = C0181y0.g(i2, mode);
        }
        drawable.setColorFilter(g2);
    }

    public final ColorStateList d(Context context, int i2) {
        if (i2 == R.drawable.abc_edit_text_material) {
            return B.a.x(context, R.color.abc_tint_edittext);
        }
        if (i2 == R.drawable.abc_switch_track_mtrl_alpha) {
            return B.a.x(context, R.color.abc_tint_switch_track);
        }
        if (i2 != R.drawable.abc_switch_thumb_material) {
            if (i2 == R.drawable.abc_btn_default_mtrl_shape) {
                return b(context, Q0.c(context, R.attr.colorButtonNormal));
            }
            if (i2 == R.drawable.abc_btn_borderless_material) {
                return b(context, 0);
            }
            if (i2 == R.drawable.abc_btn_colored_material) {
                return b(context, Q0.c(context, R.attr.colorAccent));
            }
            if (i2 == R.drawable.abc_spinner_mtrl_am_alpha || i2 == R.drawable.abc_spinner_textfield_background_material) {
                return B.a.x(context, R.color.abc_tint_spinner);
            }
            if (a(this.f2939b, i2)) {
                return Q0.d(context, R.attr.colorControlNormal);
            }
            if (a(this.f2942e, i2)) {
                return B.a.x(context, R.color.abc_tint_default);
            }
            if (a(this.f2943f, i2)) {
                return B.a.x(context, R.color.abc_tint_btn_checkable);
            }
            if (i2 == R.drawable.abc_seekbar_thumb_material) {
                return B.a.x(context, R.color.abc_tint_seek_thumb);
            }
            return null;
        }
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList d2 = Q0.d(context, R.attr.colorSwitchThumbNormal);
        if (d2 == null || !d2.isStateful()) {
            iArr[0] = Q0.f2699b;
            iArr2[0] = Q0.b(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = Q0.f2702e;
            iArr2[1] = Q0.c(context, R.attr.colorControlActivated);
            iArr[2] = Q0.f2703f;
            iArr2[2] = Q0.c(context, R.attr.colorSwitchThumbNormal);
        } else {
            int[] iArr3 = Q0.f2699b;
            iArr[0] = iArr3;
            iArr2[0] = d2.getColorForState(iArr3, 0);
            iArr[1] = Q0.f2702e;
            iArr2[1] = Q0.c(context, R.attr.colorControlActivated);
            iArr[2] = Q0.f2703f;
            iArr2[2] = d2.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }
}
