import React, { FC } from 'react'
import { GetServerSideProps } from 'next'
import {GameModel} from "@/models/GameModel";
import Game from "@/components/Game";
import Config from '@/util/Config';

type Props = {
    games: GameModel[]
}
const Index: FC<Props> = ({ games }) => {
    return <div>
        {games.map(game => (
            <Game key={game.title} {...game} />
            ))}
    </div>
}
export const getServerSideProps: GetServerSideProps<Props> = async () => {
    // Fetch data from external API
    const res = await fetch(`${Config.BACKEND_SERVICE}/games`)
    const games: GameModel[] = await res.json()
    games.sort((a, b) => parseInt(a.rank, 10) - parseInt(b.rank, 10))


    // Pass data to the page via props
    return { props: { games } }
}
export default Index
