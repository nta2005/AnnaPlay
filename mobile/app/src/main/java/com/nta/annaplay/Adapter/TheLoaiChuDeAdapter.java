package com.nta.annaplay.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.nta.annaplay.activity.BaiHatActivity;
import com.nta.annaplay.model.TheLoai;
import com.nta.annaplay.R;
import com.squareup.picasso.Picasso;

import java.util.ArrayList;

public class TheLoaiChuDeAdapter extends RecyclerView.Adapter<TheLoaiChuDeAdapter.ViewHolder>{

    Context context;
    ArrayList<TheLoai> theLoaiArrayList;

    public TheLoaiChuDeAdapter(Context context, ArrayList<TheLoai> theLoaiArrayList) {
        this.context = context;
        this.theLoaiArrayList = theLoaiArrayList;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(context);
        View view = inflater.inflate(R.layout.dong_the_loai_theo_chu_de,parent,false);
        return new ViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        TheLoai theLoai = theLoaiArrayList.get(position);
        Picasso.with(context).load(theLoai.getHinhTheLoai()).into(holder.imghinhnen);
        holder.txttentheloai.setText(theLoai.getTenTheLoai());
    }

    @Override
    public int getItemCount() {
        return theLoaiArrayList.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        ImageView imghinhnen;
        TextView txttentheloai;
        public ViewHolder(@NonNull View itemView) {
            super(itemView);
            imghinhnen = itemView.findViewById(R.id.imageviewtheloaitheochude);
            txttentheloai = itemView.findViewById(R.id.textviewtentheloaitheochude);
            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    Intent intent = new Intent(context, BaiHatActivity.class);
                    intent.putExtra("idtheloai",theLoaiArrayList.get(getPosition()));
                    context.startActivity(intent);
                }
            });
        }
    }
}
