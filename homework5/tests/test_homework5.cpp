#include <gtest/gtest.h>
#include "../homework5.cpp"

TEST(TimeTest, DefaultConstructor) {
    Time t;
    EXPECT_EQ(t.GetHours(), 0);
    EXPECT_EQ(t.GetMinutes(), 0);
    EXPECT_EQ(t.GetSeconds(), 0);
}

TEST(TimeTest, ParameterizedConstructor) {
    Time t(1, 2, 3);
    EXPECT_EQ(t.GetHours(), 1);
    EXPECT_EQ(t.GetMinutes(), 2);
    EXPECT_EQ(t.GetSeconds(), 3);
}

TEST(TimeTest, CopyConstructor) {
    Time t1(1, 2, 3);
    Time t2(t1);
    EXPECT_EQ(t2.GetHours(), 1);
    EXPECT_EQ(t2.GetMinutes(), 2);
    EXPECT_EQ(t2.GetSeconds(), 3);
}

TEST(TimeTest, AssignmentOperator) {
    Time t1(1, 2, 3);
    Time t2;
    t2 = t1;
    EXPECT_EQ(t2.GetHours(), 1);
    EXPECT_EQ(t2.GetMinutes(), 2);
    EXPECT_EQ(t2.GetSeconds(), 3);
}

TEST(TimeTest, AdditionOperator) {
    Time t(0, 0, 0);
    t += 60;
    t.Normalize();
    EXPECT_EQ(t.GetMinutes(), 1);
    EXPECT_EQ(t.GetSeconds(), 0);
}

TEST(TimeTest, SubtractionOperator) {
    Time t(0, 1, 0);
    t -= 60;
    t.Normalize();
    EXPECT_EQ(t.GetMinutes(), 0);
    EXPECT_EQ(t.GetSeconds(), 0);
}

TEST(TimeTest, ToSeconds) {
    Time t(1, 1, 1);
    EXPECT_EQ(t.ToSeconds(), 3661);
}

TEST(TimeTest, Normalize) {
    Time t(0, 0, 60);
    t.Normalize();
    EXPECT_EQ(t.GetMinutes(), 1);
    EXPECT_EQ(t.GetSeconds(), 0);
}

TEST(TimeTest, FailingTest) {
    Time t(0, 0, 0);
    EXPECT_EQ(t.GetHours(), 1);
}
