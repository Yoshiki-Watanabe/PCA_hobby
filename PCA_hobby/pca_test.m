images = loadMNISTImages('train-images-idx3-ubyte');
labels = loadMNISTLabels('train-labels-idx1-ubyte');

% We are using display_network from the autoencoder code
display_network(images(:,1:100)); % Show the first 100 images
disp(labels(1:10));

for i= :10
    figure;
    imagesc(reshape(images(:,i), size(img)));
end



n_100_array = zeros(10,1);
for i=0:9
    for k=1:4000
        if sum(labels(1:k)==i)==100
            n_100_array(i+1) = k;
        end
    end
end


img = zeros(size(images,1),);

for i=0:9
    img(i+1) = images(:, i==labels(1:n_100_array(i+1)));
end


