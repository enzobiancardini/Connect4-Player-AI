% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2019/1

function [best_val, best_pos] = valmin(Board, depth, player, alpha, beta)
  debug=0;
  best_val=nan;
  best_pos=0;
  if is_terminal(Board, depth);
    best_val=eval_game(Board, depth, player);
  else
    v=+Inf;
    i=1;
    while i<=7
      [new_board, valid]=do_move(Board, i, opposite_player(player));
      if valid==1
        v=min(v, valmax(new_board, depth-1, player, alpha, beta));
        if isnan(best_val) || v<best_val;
          best_val=v;
          best_pos=i;
        endif
        beta=min(beta, v);
        if v<=alpha
          i=8;
        endif
      endif
      i++;
    endwhile
  end
endfunction
