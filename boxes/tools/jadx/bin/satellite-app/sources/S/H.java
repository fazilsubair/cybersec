package S;

import android.database.Observable;

/* loaded from: classes.dex */
public final class H extends Observable {
    public final boolean a() {
        return !((Observable) this).mObservers.isEmpty();
    }
}
