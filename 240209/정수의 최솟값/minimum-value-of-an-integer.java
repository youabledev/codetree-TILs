import java.util.Scanner;

public class Main {
    public static int min(int a, int b, int c) {
        int minVal = a;
        if (minVal > b)
            minVal = b;
        
        if (minVal > c)
            minVal = c;
        
        return minVal;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();
        int c = sc.nextInt();

        System.out.println(min(a, b, c));
    }
}