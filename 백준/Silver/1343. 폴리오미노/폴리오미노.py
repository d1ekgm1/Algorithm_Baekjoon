board = input().split('.')
new_board = []
check = 0

for i in range(0,len(board)):
    if len(board[i]) % 2 != 0:
        check = -1
        print(-1)
        break;
    else :
        tot_len = len(board[i])
        A_len = tot_len//4
        B_len = (tot_len%4)//2
        
        new_word = str('AAAA'*A_len)+str('BB'*B_len)
        new_board.append(new_word)

if check != -1:
    print('.'.join(new_board))
