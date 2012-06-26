#my_ndk=/media/Store/android-ndk/android-ndk-r7c
my_ndk=/home/baoduy/android/android-ndk-r7b
all:
	${my_ndk}/ndk-build
clean:
	${my_ndk}/ndk-build clean
