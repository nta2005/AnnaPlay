package com.nta.annaplay.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

import com.nta.annaplay.R;

public class Fragment_Home extends Fragment {

    View view;
    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        //Gán layout vào fragment:
        view = inflater.inflate(R.layout.fragment_home,container,false);
        return view;
    }
}
