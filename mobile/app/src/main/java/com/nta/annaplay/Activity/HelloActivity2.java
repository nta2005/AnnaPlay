package com.nta.annaplay.activity;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;

import com.nta.annaplay.R;

public class HelloActivity2 extends AppCompatActivity {

    private TextView textView;
    private ImageView imageView;
    Animation animationText, animationImage;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_hello2);
        textView = (TextView) findViewById(R.id.tv);
        imageView = (ImageView) findViewById(R.id.img);

        animationText = AnimationUtils.loadAnimation(this, R.anim.text_anim);
        animationImage = AnimationUtils.loadAnimation(this, R.anim.img_anim);
        textView.startAnimation(animationText);
        imageView.startAnimation(animationImage);

        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                startActivity(new Intent(HelloActivity2.this, MainActivity.class));
                finish();
            }
        }, 2000);
    }
}