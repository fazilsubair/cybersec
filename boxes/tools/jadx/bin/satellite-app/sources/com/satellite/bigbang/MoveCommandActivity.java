package com.satellite.bigbang;

import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import androidx.appcompat.app.AppCompatActivity;
import e.ViewOnClickListenerC0096b;

/* loaded from: classes.dex */
public class MoveCommandActivity extends AppCompatActivity {

    /* renamed from: s, reason: collision with root package name */
    public static final /* synthetic */ int f1995s = 0;

    /* renamed from: n, reason: collision with root package name */
    public EditText f1996n;

    /* renamed from: o, reason: collision with root package name */
    public EditText f1997o;

    /* renamed from: p, reason: collision with root package name */
    public EditText f1998p;

    /* renamed from: q, reason: collision with root package name */
    public String f1999q;

    /* renamed from: r, reason: collision with root package name */
    public long f2000r;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_move_command);
        this.f1999q = getIntent().getStringExtra("access_token");
        this.f2000r = getIntent().getLongExtra("token_expiry_time", 0L);
        this.f1996n = (EditText) findViewById(R.id.editTextX);
        this.f1997o = (EditText) findViewById(R.id.editTextY);
        this.f1998p = (EditText) findViewById(R.id.editTextZ);
        ((Button) findViewById(R.id.sendCommandButton)).setOnClickListener(new ViewOnClickListenerC0096b(7, this));
    }
}
