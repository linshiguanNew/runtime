//
//  main.c
//  PThread
//
//  Created by 潘显跃 on 16/6/21.
//  Copyright © 2016年 Panda. All rights reserved.
//

#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <stdarg.h>

pthread_mutex_t mutex;
void *func(void *argu);
int sum(int i, ...);

int main(int argc, const char * argv[]) {
    
    int rc1, rc2;
    
    char *str1 = "Hi";
    char *str2 = "Boy!";
    
    pthread_t thread1, thread2;
    pthread_mutex_init(&mutex, NULL);

    if ((rc1 = pthread_create(&thread1, NULL, func, str1))) {
        fprintf(stdout, "thread1 creat fail : %d \n!", rc1);
    }
    if ((rc2 = pthread_create(&thread2, NULL, func, str2))) {
        fprintf(stdout, "thread2 creat fail : %d \n!", rc2);
    }

    // https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man3/pthread_join.3.html#//apple_ref/c/func/pthread_join
    // 等待一个线程的结束，当函数返回时，被等待的线程资源被收回。若线程已经被收回，那么该函数会立即返回
    pthread_join(thread1, NULL);
    pthread_join(thread2, NULL);
    printf("这边只有线程被回收后才会执行！");
    
    // *******************
    printf("%d",sum(1, 2 , 3));
    return 0;
}

void *func(void *argu) {
    char *m = (char *)argu;

    pthread_mutex_lock(&mutex);
    while (*m != '\0') {
        printf("%c", *m);
        fflush(stdout);
        sleep(3);
        m++;
    }
    printf("\n");
    pthread_mutex_unlock(&mutex);
    return 0;
}

/**
 *  模拟可变参数
 */
int sum(int i, ...) {
    va_list args;
    va_start(args, i);
    int j = va_arg(args, int);
    int k = va_arg(args, int);
    va_end(args);
    return j + k + i;
}
