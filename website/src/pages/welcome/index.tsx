import React, { FC } from 'react'
import { GetServerSideProps } from 'next'
import styles from '@/styles/Home.module.css'
import Config from '@/util/Config'

type Props = {
    welcome: string
}
const Index: FC<Props> = ({ welcome }) => {
    return <main className={styles.main}><h1>{welcome}</h1></main>
}
export const getServerSideProps: GetServerSideProps<Props> = async () => {
    // Fetch data from external API
    const res = await fetch(`${Config.BACKEND_SERVICE}/welcome`)
    const welcome: string = await res.text()

    // Pass data to the page via props
    return { props: { welcome } }
}
export default Index
