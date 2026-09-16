package com.pocotech.aidd.task;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ActiveProfiles("test")
class TaskApiIntegrationTest {

    @Test
    void applicationContextStartsWithTheTestDatabase() {
        assertThat(true).isTrue();
    }
}
