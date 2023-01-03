import torch
import os


def train(num_epoch, model, train_loader, val_loader,  criterion, optimizer, save_dir, device) :
    print("학습을 시작합니다......")
    total = 0
    best_loss = 99999
    for epoch in range(num_epoch+1) :
        for i, (imgs, labels) in enumerate(train_loader) :
            img, label = imgs.to(device), labels.to(device)
            output = model(img)
            loss = criterion(output, label)

            optimizer.zero_grad()
            loss.backward()
            optimizer.step()

            _, argmax = torch.max(output, 1)
            acc = (label==argmax).float().mean()
            total += label.size(0)

            if (i + 1) % 10 == 0:
                print("Epoch [{}/{}] | Step[{}/{}] | Loss :{:.4f} |  Acc : {:.2f}%".format(
                    epoch + 1 , num_epoch, i + 1, len(train_loader), loss.item(), acc.item() * 100
                ))
        avrg_loss, val_acc = validation(model, val_loader, criterion, device)
        if avrg_loss < best_loss :
            print(f"Best save at epoch >> {epoch}")
            print("save model in " , save_dir)
            best_loss = avrg_loss
            save_model(model, save_dir)
    
    save_model(model, save_dir, file_name="last_rexnet.pt")


def save_model(model, save_dir, file_name="best_rexnet.pt") :
    output_path = os.path.join(save_dir, file_name)
    torch.save(model.state_dict(), output_path)


def validation(model, val_loader, criterion, device) :
    print("검증을 시작합니다......")
    model.eval() # 모델을 평가 모드로 전환
    with torch.no_grad() :
        total = 0
        correct = 0
        total_loss = 0
        cnt = 0
        batch_loss = 0

        for i, (imgs, labels) in enumerate(val_loader) :
            imgs, labels = imgs.to(device), labels.to(device)
            output = model(imgs)
            loss = criterion(output, labels) # 모델이 예측한 거(output)랑 정답(label)이랑 비교한 차이 값(loss)
            batch_loss += loss.item()

            total += imgs.size(0)
            _, argmax = torch.max(output, 1)
            correct += (labels==argmax).sum().item()
            total_loss += loss.item()
            cnt += 1

    avrg_loss = total_loss / cnt # 평균 loss값
    val_acc = (correct / total * 100)
    print("Validation Accuracy : {:.2f} | Average Loss : {:.4f}".format(
        val_acc, avrg_loss
    ))
    model.train() # 평가를 마쳤으니 model을 학습 모드로 전환시켜줌
    return avrg_loss, val_acc