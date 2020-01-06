import java.util.Scanner;

public class Exercise_Palindrome {
    public static boolean palindrome(String text) { // Checks if the original text equals the reversed text
        if (text.equals(reverse(text))) {
            return true;
        } else {
            return false;
        }
    }

    public static String reverse(String text) { // Reverses the string
        int i = text.length() - 1;
        String reversed = "";
        while (i >= 0){
            reversed+=text.charAt(i);
            i--;
        }
        return reversed;
    }

    public static void main(String[] args) {
        Scanner reader = new Scanner(System.in);

        System.out.println("Type a text: ");
        String text = reader.nextLine();
        if (palindrome(text)) { // If the original text is a palindrome...
            System.out.println("The text is a palindrome!");
        } else { // If the original text is NOT a palindrome...
            System.out.println("The text is not a palindrome!");
        }
    }
}
