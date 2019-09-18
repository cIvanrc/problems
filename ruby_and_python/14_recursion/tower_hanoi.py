def tower_of_hanoi(number_of_disks, start_peg = 1, end_peg = 3):
    if number_of_disks:
        tower_of_hanoi(number_of_disks - 1, start_peg, 6 - start_peg - end_peg)
        print("Move disk {} from peg {} to peg {}".format(number_of_disks, start_peg, end_peg))
        tower_of_hanoi(number_of_disks - 1, 6 - start_peg - end_peg, end_peg )


tower_of_hanoi(4)
