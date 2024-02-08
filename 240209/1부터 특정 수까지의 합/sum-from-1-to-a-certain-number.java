public class Main {
    public static int sumN(int n) {
        int sum = 0;
        for(int i = 1; i <= n; i++)
            sum += 1;
        return sum / 10;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        System.out.println(sumN(n));
    }
}