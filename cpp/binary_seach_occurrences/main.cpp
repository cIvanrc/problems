#include <bits/stdc++.h>
#include <array>
using namespace std;


int BinarySeach(int A[],int n, int x, int ok){
   int left = 0, right = n-1;
   int mid;
   int result = -1;

   while (left <= right){
      mid = ( left+right )/2;

      if( x == A[mid] ){
         result = mid;
         if( ok == 1 ) right = mid-1;
         if( ok == 2 ) left = mid+1;
      }else if( x < A[mid] ){
         right = mid-1;
      }else{
         left = mid+1;
      }
   }

   return result;
}

int main(){

   int A[] = { 1,1,1,1,2,2,3,3,3,3,3,3,5,6,7,9,9,9,9,10 };

   int firstOcurrence = BinarySeach(A,20, 9, 1);
   int lastOcurrence = BinarySeach(A,20, 9, 2);

   if( firstOcurrence == -1 ) {
      cout<<"The element is not in the array";
   }else{
      cout<<"The element appers"<<lastOcurrence-firstOcurrence+1;
   }

   return 0;
}
