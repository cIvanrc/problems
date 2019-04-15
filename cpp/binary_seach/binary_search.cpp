#include <bits/stdc++.h>
using namespace std;
ifstream f("data.in");
ofstream g("data.out");

int A[] = { 1,4,6,8,10,14,18,21 }, numberElements=8;


int BinarySearch(int x){
   int left = 1, right = numberElements, mid;

   while (left <= right){
      mid = ( left+right ) / 2;

      if ( x == A[mid] ){
         return mid; // we have found x
      }else if ( x < A[mid] ){
         right = mid-1; //we discard the second half of the array
      }else{
         left = mid+1; //we discard the first half of the array
      }
   }

   return -1;
}


int main (){
   //f>>numberElements;
   //// array A is in ascending order
   //for ( int i=1; i<=numberElements; ++i )
      //f>>A[i];


   cout<<BinarySearch(18);

   return 0;
}
