import com.app.sb.domain.MemberDTO;
import com.app.sb.domain.MemberRegRequestDTO;
import com.app.sb.mapper.MemberMapper;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberTest {

    @Autowired
    private MemberMapper memberMapper;

    @Test
    public void insertMemerTest(){

        MemberDTO memberDTO = MemberDTO.builder().uid("a").upw("a").uname("a").nickname("a").phone("a").email("a").address1("a").address2("a").uphoto("a").build();
        log.info(memberDTO);
        int result = memberMapper.insertMemer(memberDTO);
        Assertions.assertEquals(1, result);
    }


}


