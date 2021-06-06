package pankaj.LabAct8;

import java.util.Arrays;
import java.util.Collections;

public class Test_sorting extends A_sort implements D_sort {
    public String[] array;

    @Override
    public String[] descending(String[] array) {
        //Arrays.sort(array, Collections.reverseOrder());
        int siz = array.length;
        int temp = 0;
        for(int i=0; i<siz; i++){
            for(int j=1; j<(siz-i); j++){
                if(Integer.parseInt(array[j-1]) < Integer.parseInt(array[j])){
                    temp = Integer.parseInt(array[j-1]);
                    array[j-1] = array[j];
                    array[j] = Integer.toString(temp);
                }
            }
        }
        return array;
    }
}
