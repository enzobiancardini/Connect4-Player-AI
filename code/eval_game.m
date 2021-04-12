% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2019/1

function [ score ] = eval_game( Board, depth,  player)
  score     = 0;
  seq2      = find_streak(Board, player, 2);
  score     = score + 10*seq2;
  opo_seq2  = find_streak(Board, opposite_player(player), 2);
  score     = score - 10*opo_seq2;
  seq3      = find_streak(Board, player, 3);
  score     = score + 60*seq3;
  opo_seq3  = find_streak(Board, opposite_player(player), 3);
  score     = score - 600*opo_seq3;

end
