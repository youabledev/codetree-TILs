import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();
        int t = sc.nextInt();

        ArrayList<Integer> arr = new ArrayList<>();

        for(int i = 1; i <= n * 2 ; i++)
            arr.add(sc.nextInt());

        for(int i = 1; i <= t; i++) {
            int last = arr.get(arr.size() - 1);
            arr.remove(arr.size() - 1);
            arr.add(0, last);
        }

        // result print
        for(int i = 0; i < arr.size(); i++) {
            System.out.print(arr.get(i) + " ");

            if(i == (n - 1))
                System.out.println();
        }
    }
}