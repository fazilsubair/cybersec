package c.b.a;

import android.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class b {
    public static String a(String str) {
        SecretKeySpec secretKeySpec = new SecretKeySpec((String.valueOf(h.a().charAt(0)) + String.valueOf(a.a().charAt(8)) + String.valueOf(e.a().charAt(5)) + String.valueOf(i.a().charAt(4)) + String.valueOf(h.a().charAt(1)).toLowerCase() + String.valueOf(h.a().charAt(4)) + String.valueOf(h.a().charAt(3)).toLowerCase() + String.valueOf(h.a().charAt(3)) + String.valueOf(h.a().charAt(0)) + String.valueOf(a.a().charAt(8)).toLowerCase() + String.valueOf(a.a().charAt(8)).toLowerCase() + String.valueOf(i.a().charAt(0)) + String.valueOf(c.a().charAt(3)).toLowerCase() + String.valueOf(f.a().charAt(3)) + String.valueOf(f.a().charAt(0)) + String.valueOf(c.a().charAt(0))).getBytes(), g.b());
        Cipher cipher = Cipher.getInstance(g.b());
        cipher.init(2, secretKeySpec);
        return new String(cipher.doFinal(Base64.decode(str, 0)), "utf-8");
    }
}
