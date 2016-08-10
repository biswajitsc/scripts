%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ind = 1;
subplot (2,2,ind);
hold all
box on
plot(M_l2(:,ind), 'LineWidth', thickness);
plot(M_vl_l2(:,ind), 'LineWidth', thickness);
plot(M_dr(:,ind), 'LineWidth', thickness);
plot(M_l2_dr(:,ind), 'LineWidth', thickness);
plot(M_vl_dr(:,ind), 'LineWidth', thickness);
plot(M_vl_l2_dr(:,ind), 'LineWidth', thickness);
hold off

set(gca,'xscale', 'log');
% legend('L2', 'VR-L2', 'DR', 'L2-DR', 'VL-DR', 'VR-L2-DR');
xlabel('Epochs');
ylabel('Normalized Loss Value');
title('CIFAR-10 Total Loss');
axis('tight');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ind = 2;
subplot (2,2,ind);
hold all
box on
plot(M_l2(:,ind), 'LineWidth', thickness);
plot(M_vl_l2(:,ind), 'LineWidth', thickness);
plot(M_dr(:,ind), 'LineWidth', thickness);
plot(M_l2_dr(:,ind), 'LineWidth', thickness);
plot(M_vl_dr(:,ind), 'LineWidth', thickness);
plot(M_vl_l2_dr(:,ind), 'LineWidth', thickness);
hold off

set(gca,'xscale', 'log');
% legend('L2', 'VR-L2', 'DR', 'L2-DR', 'VL-DR', 'VR-L2-DR');
xlabel('Epochs');
ylabel('Normalized Loss Value');
title('CIFAR-10 VR Loss');
axis('tight');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ind = 3;
subplot (2,2,ind);
hold all
box on
plot(M_l2(:,ind), 'LineWidth', thickness);
plot(M_vl_l2(:,ind), 'LineWidth', thickness);
plot(M_dr(:,ind), 'LineWidth', thickness);
plot(M_l2_dr(:,ind), 'LineWidth', thickness);
plot(M_vl_dr(:,ind), 'LineWidth', thickness);
plot(M_vl_l2_dr(:,ind), 'LineWidth', thickness);
hold off

set(gca,'xscale', 'log');
% legend('L2', 'VR-L2', 'DR', 'L2-DR', 'VL-DR', 'VR-L2-DR');
xlabel('Epochs');
ylabel('Normalized Loss Value');
title('CIFAR-10 L2 Loss');
axis('tight');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

loc = subplot(2,2,4);
plot(1,1,1,1,1,1,1,1,1,1,1,1);
set(gca, 'visible', 'off');

leg = legend('L2', 'VR-L2', 'DR', 'L2-DR', 'VR-DR', 'VR-L2-DR');
set(leg, 'Position', get(loc, 'Position'));


fig = gcf;
set(fig, 'PaperPosition', [0 0 15 15]);
print(fig, 'CifarConvergence', '-depsc','-r100');
