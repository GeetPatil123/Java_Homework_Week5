package java_homework_week5;

public class Program9 {

    public static void main(String[] args) {

        System.out.println("Test Data: a. -5+8*6 ");
        System.out.println("           b. (55+9)%9 ");
        System.out.println("           c. 20 + -3*5/8");
        System.out.println("           d. 5+15/3*2 -8%3  ");

        System.out.println("Expected Output: 43 ");
        System.out.println("                 1");
        System.out.println("                 19");
        System.out.println("                 13");
        System.out.println();

        System.out.print("Actual output for: a. ");
        System.out.println(-5 + 8 * 6);
        System.out.print("                   b. ");
        System.out.println((55 + 9) % 9);
        System.out.print("                   c. ");
        System.out.println(20 + -3 * 5 / 8);
        System.out.print("                   d. ");
        System.out.println(5 + 15 / 3 * 2 - 8 % 3);
    }
}
