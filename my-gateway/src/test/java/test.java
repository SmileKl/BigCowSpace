import cn.hutool.core.date.DateUtil;
import cn.hutool.core.date.TimeInterval;

public class test {
    public static void main(String[] args) {
        TimeInterval timer = DateUtil.timer();
        for (int i = 0; i < 10000000; i++) {

        }
        System.out.println(timer.intervalSecond());
    }
}
