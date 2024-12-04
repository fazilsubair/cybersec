package c.c.a.a.j;

import android.annotation.TargetApi;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.material.chip.Chip;

/* loaded from: classes.dex */
public class a extends ViewOutlineProvider {
    public final /* synthetic */ Chip a;

    public a(Chip chip) {
        this.a = chip;
    }

    @Override // android.view.ViewOutlineProvider
    @TargetApi(21)
    public void getOutline(View view, Outline outline) {
        b bVar = this.a.e;
        if (bVar != null) {
            bVar.getOutline(outline);
        } else {
            outline.setAlpha(0.0f);
        }
    }
}
