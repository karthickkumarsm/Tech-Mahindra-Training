class StringManipulation {
    public static boolean isPalindrome(String str){
        if (str == null) {
            return false;
        }

        str = str.toLowerCase().replaceAll("[^a-zA-Z0-9]", "");
        int l = 0;
        int r = str.length() - 1;

        while (l < r) {
            if (str.charAt(l) != str.charAt(r)) {
                return false;
            }
            l++;
            r--;
        }
        return true;

    }
    public static void main(String[] args) {
        isPalindrome("racecar");
        isPalindrome("hello");
        isPalindrome("A man, a plan, a canal, Panama");
    }
}