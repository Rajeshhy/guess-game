# Simple shopping cart. 
# Keep item names and prices in arrays. 
# A while loop lets the user keep adding items until they type “done.” 
# A for loop totals the bill, 
# and if applies a discount when the total is over a certain amount.


products = {"apple" : 20,
         "mango" : 40,
         "orange" : 35,
         "banana" : 15,
         "kiwi" : 70,
         "pomogranate" : 80}


Order = {}

while True:
        your_order = input("select products(type done if finished): ").lower()
        if your_order in products:
            if your_order in Order:
                Order[your_order] += products[your_order]
                print(Order)
            else:
                  Order[your_order] = products[your_order]
                  print(Order)
        elif your_order == "done":
            break
        else:
            print("Wrong Input")
            


Total = sum(Order.values())
print(list(Order),"$",Total)
            




       
    
























