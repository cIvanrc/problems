#include <bits/stdc++.h>
using namespace std;

struct Books
{
   char Title[20];
   char Author[20];
   int ID;
   float price;
}book1;

void printingBooks( Books variableBook ){
   cout<<"Book title is: "<<variableBook.Title<<"\n";
   cout<<"Book author is: "<<variableBook.Author<<"\n";
   cout<<"ID: "<<variableBook.ID<<"\n";
   cout<<"Book price is: "<<variableBook.price<<"\n";
}

int main(){

   book1.ID = 10;
   book1.price = 13.67;

   strcpy(book1.Title, "Data structures");
   strcpy(book1.Author, "Mark");

   printingBooks(book1);


   Books book2;
   book1.ID = 100;
   cout<<"ID book2: "<<book2.ID<<"\n";



   return 0;
}
