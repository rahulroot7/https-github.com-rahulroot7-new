<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Designed and developed by Sanskar Tiwari | sanskarxcix(at)gmail(dot)com -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IN42</title>
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/boards.css">
</head>

<body>
    <div class="wrapper">
        <?php
        session_start();
        include('components/navigation.php');
        $db = mysqli_connect('localhost', 'root', '', 'strc');


        ?>


        <?php if (isset($_GET['tid'])) : ?>
            <?php $query = "SELECT * FROM " . $_GET['tid'] . " ORDER BY timestamp ASC";
            $result = mysqli_query($db, $query); ?>

            <div class="threadwrapper">
                <table>
                    <tr>
                        <th>pid</th>
                        <th>content</th>
                        <th>user</th>
                        <th>post Timestamp</th>
                    </tr>
                    <?php while ($rows = mysqli_fetch_assoc($result)) { ?>
                        <tr>
                            <td><?php echo $rows['pid']; ?></td>
                            <td><?php echo $rows['content']; ?></td>
                            <td><?php echo $rows['user']; ?></td>
                            <td><?php echo $rows['timestamp'];
                            } ?></td>

                </table>
            </div>
            <div class="wrapper2">
                <form action="../server/createpost.php" method="post">
                    <textarea maxlength="2048" placeholder="Start typing..." name="post" required autofocus></textarea>
                    <input class="btn" type="submit" value="Post Now">
                    <?php
                    if (isset($_SESSION['createpostsuccess'])) echo "<i class='success'>post created!</i>";
                    elseif (isset($_SESSION['createpostfailure'])) echo "<i class='failure'>Cannot create post!</i>";
                    $_SESSION['tid'] = $_GET['tid']; ?>
                </form>
            </div>

        <?php endif ?>


        <?php if (!isset($_GET['tid'])) : ?>
            <?php $query = "SELECT * FROM php5f450c511d5a0 ORDER BY timestamp DESC";
            $result = mysqli_query($db, $query); ?>

            <div class="boardwrapper">
                <table>
                    <tr>
                        <th>Thread ID</th>
                        <th>Thread Title</th>
                        <th>Thread Description</th>
                        <th>Thread User</th>
                        <th>Thread Timestamp</th>
                    </tr>
                    <?php while ($rows = mysqli_fetch_assoc($result)) { ?>
                        <tr>
                            <td><?php echo "<a href='php.php?tid=" . $rows['tid'] . "'>" . $rows['tid'] . "</a>"; ?></td>
                            <td><?php echo $rows['title']; ?></td>
                            <td><?php echo $rows['post0']; ?></td>
                            <td><?php echo $rows['user']; ?></td>
                            <td><?php echo $rows['timestamp'];
                            } ?></td>

                </table>
            </div>
        <?php endif ?>
    </div>
</body>

</html>