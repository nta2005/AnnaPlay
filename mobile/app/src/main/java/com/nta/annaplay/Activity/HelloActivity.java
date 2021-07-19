package com.nta.annaplay.activity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;

import androidx.appcompat.app.AppCompatActivity;

import com.nta.annaplay.R;

public class HelloActivity extends AppCompatActivity {
    private ImageView imageView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_hello);
        imageView = (ImageView) findViewById(R.id.img);

        Animation myanim = AnimationUtils.loadAnimation(this, R.anim.anim_hello);
        imageView.startAnimation(myanim);

        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                startActivity(new Intent(HelloActivity.this, HelloActivity2.class));
                finish();
            }
        }, 1111);
    }
}
