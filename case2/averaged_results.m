clc;
clear;

cases = 5; 
% For loop to read in all 5 datasets 
% number of cases = 5
% average_result = addition of values / no_of_cases

results    = {}; 

% Death of Hares
% figure();
for i = 1: 5
    results{i} = load(strcat(num2str(i),('.mat')));
    results_IT{i} = results{i}.IT_STATS;
    results_died_hares{i} = results_IT{i}.died_r;
%     txt = ['Run Number = ', num2str(i)];
%     plot(results_died_hares{i}, 'DisplayName', txt);
%     hold on;
end
% hold off;
% legend('Location','northwestoutside')
% legend show; legend('Location','northwestoutside');
% grid on;
% xlabel('Iterations');
% ylabel('Death Rate (Hares)');
% title('Case 1');
% 
% % Death of Lynxes
% figure();
% for i = 1: 5
%     results_died_lynxes{i} = results_IT{i}.died_f;
%     txt = ['Run Number = ', num2str(i)];
%     plot(results_died_lynxes{i}, 'DisplayName', txt);
%     hold on;
% end
% hold off; 
% legend show; legend('Location','northwestoutside');
% grid on;
% xlabel('Iterations');
% ylabel('Death Rate (Lynxes)');
% title('Case 1');

% Birth of Hares
figure();
for i = 1: 5
    results_birth_hares{i} = results_IT{i}.div_r;
    txt = ['Run Number = ', num2str(i)];
    plot(results_birth_hares{i}, 'DisplayName', txt);
    hold on;
end
hold off; 
legend show; legend('Location','northwestoutside');
grid on;
xlabel('Iterations');
ylabel('Birth Rate (Hares)');
title('Case 2');

% % Death of Hares
% figure();
% for i = 1: 5
%     results_birth_lynxes{i} = results_IT{i}.div_f;
%     txt = ['Run Number = ', num2str(i)];
%     plot(results_birth_lynxes{i}, 'DisplayName', txt);
%     hold on;
% end
% hold off; 
% legend show; legend('Location','northwestoutside');
% grid on;
% xlabel('Iterations');
% ylabel('Birth Rate (Lynxes)');
% title('Case 1');

% Total Number of Hares
figure();
for i = 1: 5
    results_no_of_hares{i} = results_IT{i}.tot_r;
    txt = ['Run Number = ', num2str(i)];
    plot(results_no_of_hares{i}, 'DisplayName', txt);
    hold on;
end
hold off; 
legend show; legend('Location','northwestoutside');
grid on;
xlabel('Iterations');
ylabel('Total Number (Hares)');
title('Case 2');

% % Total Number of Lynxes
% figure();
% for i = 1: 5
%     results_no_of_lynxes{i} = results_IT{i}.tot_f;
%     txt = ['Run Number = ', num2str(i)];
%     plot(results_no_of_lynxes{i}, 'DisplayName', txt);
%     hold on;
% end
% hold off; 
% legend show; legend('Location','northwestoutside');
% grid on;
% xlabel('Iterations');
% ylabel('Total Number (Lynxes)');
% title('Case 1');
% 
% % Total Food Left
% figure();
% for i = 1: 5
%     results_food{i} = results_IT{i}.tfood;
%     txt = ['Run Number = ', num2str(i)];
%     plot(results_food{i}, 'DisplayName', txt);
%     hold on;
% end
% hold off; 
% legend show; legend('Location','northwestoutside');
% grid on;
% xlabel('Iterations');
% ylabel('Total Food');
% title('Case 1');