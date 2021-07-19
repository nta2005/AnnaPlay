package com.nta.annaplay.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.Fragment;

import com.nta.annaplay.activity.BaiHatActivity;
import com.nta.annaplay.activity.ChuDeActivity;
import com.nta.annaplay.activity.TheLoaiChuDeActivity;
import com.nta.annaplay.model.ChuDe;
import com.nta.annaplay.model.TheLoai;
import com.nta.annaplay.model.TheLoaiChuDe;
import com.nta.annaplay.R;
import com.nta.annaplay.service.APIService;
import com.nta.annaplay.service.DataService;
import com.squareup.picasso.Picasso;

import java.util.ArrayList;

import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class Fragment_ChuDe_TheLoai extends Fragment {
    View view;
    HorizontalScrollView horizontalScrollView;
    TextView txtxemthemchudetheloai;

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        //Ánh xạ và gắn fragment vào MainViewPager:
        view = inflater.inflate(R.layout.fragment_chude_theloai_today, container, false);
        horizontalScrollView = view.findViewById(R.id.horizontalScrollview);
        txtxemthemchudetheloai = view.findViewById(R.id.textviewxemthem);
        //Sự kiện text Xem thêm chủ đề và thể loại:
        txtxemthemchudetheloai.setOnClickListener(v -> {
            Intent intent = new Intent(getActivity(), ChuDeActivity.class);
            startActivity(intent);
        });
        GetData();
        return view;
    }

    //Lấy dữ liệu chủ đề và thể loại:
    private void GetData() {
        DataService dataservice = APIService.getService();
        Call<TheLoaiChuDe> callback = dataservice.GetCategoryMusic();
        callback.enqueue(new Callback<TheLoaiChuDe>() {
            @Override
            public void onResponse(Call<TheLoaiChuDe> call, Response<TheLoaiChuDe> response) {
                TheLoaiChuDe theLoaiChuDe = response.body();

                final ArrayList<ChuDe> chuDeArrayList = new ArrayList<>();
                if (theLoaiChuDe != null) {
                    chuDeArrayList.addAll(theLoaiChuDe.getChuDe());
                }

                final ArrayList<TheLoai> theLoaiArrayList = new ArrayList<>();
                if (theLoaiChuDe != null) {
                    theLoaiArrayList.addAll(theLoaiChuDe.getTheLoai());
                }

                LinearLayout linearLayout = new LinearLayout(getActivity());
                linearLayout.setOrientation(LinearLayout.HORIZONTAL);

                LinearLayout.LayoutParams layout = new LinearLayout.LayoutParams(580, 250);
                layout.setMargins(10, 20, 10, 30);
                //Chủ đề:
                for (int i = 0; i < (chuDeArrayList.size()); i++) {
                    CardView cardView = new CardView(getActivity());
                    cardView.setRadius(10);
                    ImageView imageView = new ImageView(getActivity());
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    if (chuDeArrayList.get(i).getHinhChuDe() != null) {
                        Picasso.with(getActivity()).load(chuDeArrayList.get(i).getHinhChuDe()).into(imageView);
                    }
                    cardView.setLayoutParams(layout);
                    cardView.addView(imageView);
                    linearLayout.addView(cardView);
                    final int finalI = i;
                    imageView.setOnClickListener(v -> {
                        Intent intent = new Intent(getActivity(), TheLoaiChuDeActivity.class);
                        intent.putExtra("chude", chuDeArrayList.get(finalI));
                        startActivity(intent);
                    });
                }
                //Thể loại:
                for (int j = 0; j < (chuDeArrayList.size()); j++) {
                    CardView cardView = new CardView(getActivity());
                    cardView.setRadius(10);
                    ImageView imageView = new ImageView(getActivity());
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    if (theLoaiArrayList.get(j).getHinhTheLoai() != null) {
                        Picasso.with(getActivity()).load(theLoaiArrayList.get(j).getHinhTheLoai()).into(imageView);
                    }
                    cardView.setLayoutParams(layout);
                    cardView.addView(imageView);
                    linearLayout.addView(cardView);


                    final int finalJ = j;
                    imageView.setOnClickListener(v -> {
                        Intent intent = new Intent(getActivity(), BaiHatActivity.class);
                        intent.putExtra("idtheloai", theLoaiArrayList.get(finalJ));
                        startActivity(intent);
                    });
                }
                horizontalScrollView.addView(linearLayout);
            }

            @Override
            public void onFailure(Call<TheLoaiChuDe> call, Throwable t) {

            }
        });
    }
}
