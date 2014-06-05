LLVM_CONFIG=llvm-config

CXX=`$(LLVM_CONFIG) --bindir`/clang
CXXFLAGS=`$(LLVM_CONFIG) --cppflags` -fPIC -fno-rtti
LDFLAGS=`$(LLVM_CONFIG) --ldflags`

all: shfRplc.so

shfRplc.so: ShfRplc.o
	$(CXX) -std=c++0x  -shared ShfRplc.o -o shfRplc.so $(LDFLAGS) -fPIC

ShfRplc.o: shfRplc.cpp
	$(CXX) -std=c++0x  -c shfRplc.cpp -o ShfRplc.o $(CXXFLAGS)

clean:
	rm -f *.o *.so
