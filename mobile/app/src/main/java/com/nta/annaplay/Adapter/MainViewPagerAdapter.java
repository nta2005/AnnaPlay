package com.nta.annaplay.adapter;
//adapter này custom Viewpager để đổ fragment Home và fragment Search vào MainActivity:

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;

import java.util.ArrayList;

public class MainViewPagerAdapter extends FragmentPagerAdapter {
    //Mảng dùng để add fragment:
    private ArrayList<Fragment> arrayFragment = new ArrayList<>();
    //Mảng dùng để add Title của fragment:
    private ArrayList<String> arraytitle = new ArrayList<>();

    public MainViewPagerAdapter(@NonNull FragmentManager fm, int behavior) {
        super(fm, behavior);
    }

    public MainViewPagerAdapter(FragmentManager supportFragmentManager) {
        super(supportFragmentManager);
    }


    @NonNull
    @Override
    public Fragment getItem(int position) {
        //Trả về vị trí fragment:
        return arrayFragment.get(position);
    }

    @Override
    public int getCount() {
        //Trả về số lượng fragment:
        return arrayFragment.size();
    }

    //Phương thức để add fragment và hiển thị tiêu để của nó:
    public void addFragment(Fragment fragment, String title) {
        if (arrayFragment != null && arraytitle != null) {
            arrayFragment.add(fragment);
            arraytitle.add(title);
        }
    }

    //Hiển thị tên của mỗi fragment trong viewpager:
    @Nullable
    @Override
    public CharSequence getPageTitle(int position) {
        return arraytitle.get(position);
    }
}
