clc; clear; close all;

%% 1. 基本参数
nPop      = 30;       % 种群规模
Max_iter  = 500;      % 最大迭代次数
dim       = 10;       % 问题维度

%% 2. 算法列表（去除 IDOA，仅保留四个）
algoList  = {@DOA, @IDOA1, @IDOA2, @IDOA3};
algoNames = {'DOA','DOA_A','DOA_B','DOA_C'};
nAlgo     = numel(algoList);

%% 3. 只测试 F1 函数
fn = 3;
fprintf('\n===== 开始 Function F%d 的测试 =====\n', fn);

%% 4. 获取函数上下界和句柄
[lb, ub, ~, fobj] = Get_Functions_cec2017(fn, dim);

%% 5. 存储收敛曲线
Convergence_curve = zeros(Max_iter, nAlgo);

%% 6. 每个算法运行一次并记录收敛曲线
for a = 1:nAlgo
    fprintf('  -- 运行算法：%s --\n', algoNames{a});
    switch algoNames{a}
        case 'DOA'
            [~, ~, curve] = algoList{a}(nPop, Max_iter, lb, ub, dim, fobj);
        otherwise
            [~, ~, ~, ~, curve] = algoList{a}(nPop, Max_iter, lb, ub, dim, fobj);
    end
    Convergence_curve(:, a) = curve(:);
end

%% 7. 绘制收敛曲线对比图
figure;
hold on; grid on;

colors = [
    0.1216, 0.4667, 0.7059;  % 蓝
    1.0000, 0.4980, 0.0549;  % 橙
    0.1725, 0.6275, 0.1725;  % 绿
    0.5804, 0.4039, 0.7412;  % 紫
];

for a = 1:nAlgo
    semilogy(Convergence_curve(:, a), 'LineWidth', 1.5, 'Color', colors(a,:));
end

% 设置对数坐标和自定义 y 轴刻度
set(gca, 'YScale', 'log');
yticks([1,  1e5, 1e10]);
yticklabels({'10^0', '10^5', '10^{10}'});

ylim([1 1e10]);  % <- 关键行，设置Y轴范围，保证10^10刻度显示
% 设置标题、坐标轴标签
title(['CEC2022-F' num2str(fn) ' (dim=' num2str(dim) ')'], ...
    'FontName', 'Times New Roman', ...
    'FontSize', 11, ...
    'FontWeight', 'bold');
xlabel('Iteration', 'FontName', 'Times New Roman', 'FontSize', 12, 'FontWeight','bold');
ylabel(['Best Score on F' num2str(fn)], 'FontName', 'Times New Roman', 'FontSize', 12, 'FontWeight','bold');

legend(algoNames, ...
    'Interpreter', 'none', ...
    'FontName', 'Times New Roman', ...
    'FontSize', 10, ...
    'Location', 'northeast');

set(gca, 'FontName', 'Times New Roman', 'FontSize', 11);
