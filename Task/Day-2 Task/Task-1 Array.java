public class Array {
    public static void main(String[] args) {
    int[] number={1,2,3,4,5};
   int sum=0;
  // System.out.println(number[3]);
   //System.out.println(number.length);
   //descending order
 for(int i=number.length-1;i>=0;i--){
      System.out.println(number[i]);
   
      //asscending order
     //for(int i=0;i<=number.length-1;i++){
     //System.out.println(number[i]);
     
     
        //for (int i = 0; i < number.length; i++) {
          //  System.out.println(number[i]);
            sum = sum + number[i];
        }

        System.out.println("Sum is " + sum); 
    }
}
  
